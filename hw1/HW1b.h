// Copyright (C) 2019 by George Wolberg
//
// HW1b.h - Header file for HW1b class
//
// Written by: George Wolberg, 2019
// ======================================================================

#ifndef HW1B_H
#define HW1B_H


#include "HW.h"

// ----------------------------------------------------------------------
// standard include files
//

class HW1b : public HW 
{
	Q_OBJECT
public:
	HW1b(const QGLFormat &glf, QWidget *parent=0);	// constructor
	QGroupBox*	controlPanel	();		// create control panel
	void		reset		();		// reset parameters
	void		initBuffers	();		// init vertices and colors

public slots:
	void		changeTheta	(int);
	void		changeSubdiv	(int);
	void		changeTwist	(int);
    void        changeColorCode(int);

protected:
	void		initializeGL	();		// init GL state
	void		resizeGL	(int, int);	// resize GL widget
	void		paintGL		();		// render GL scene

    void		divideTriangle	(vec2, vec2, vec2, int*, int);
    void		triangle	(vec2, vec2, vec2, int*);
	vec2		rotTwist	(vec2);

private:
	int		  m_winW;			// window width
	int		  m_winH;			// window height
	int		  m_twist;
	float		  m_theta;
	int		  m_subdivisions;
	int		  m_updateColor;
    int       m_colorCode;  // 1 means triangle set to color code, 0 means it isn't
	QSlider		 *m_sliderTheta;
	QSlider		 *m_sliderSubdiv;
	QSpinBox	 *m_spinBoxTheta;
	QSpinBox	 *m_spinBoxSubdiv;
	QCheckBox	 *m_checkBoxTwist;
    QCheckBox    *m_checkBoxColorCode; // Check box for if color coding or not
	std::vector<vec2> m_points;
	std::vector<vec3> m_colors;
};

#endif // HW1B_H

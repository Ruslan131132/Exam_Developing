/****************************************************************************
**
** Copyright (C) 2020 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the QtPDF module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:LGPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU Lesser General Public License Usage
** Alternatively, this file may be used under the terms of the GNU Lesser
** General Public License version 3 as published by the Free Software
** Foundation and appearing in the file LICENSE.LGPL3 included in the
** packaging of this file. Please review the following information to
** ensure the GNU Lesser General Public License version 3 requirements
** will be met: https://www.gnu.org/licenses/lgpl-3.0.html.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 2.0 or (at your option) the GNU General
** Public license version 3 or any later version approved by the KDE Free
** Qt Foundation. The licenses are as published by the Free Software
** Foundation and appearing in the file LICENSE.GPL2 and LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-2.0.html and
** https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/
import QtQml 2.14
import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Shapes 1.14

QtObject {
    property Control prototypeControl: Control { }
    function withAlpha(color, alpha) {
        return Qt.hsla(color.hslHue, color.hslSaturation, color.hslLightness, alpha)
    }
    property color selectionColor: withAlpha(prototypeControl.palette.highlight, 0.5)
    property color pageSearchResultsColor: "#80B0C4DE"
    property color currentSearchResultStrokeColor: "cyan"
    property real currentSearchResultStrokeWidth: 2
    property color linkUnderscoreColor: prototypeControl.palette.link
    property real linkUnderscoreStrokeWidth: 1
    property var linkUnderscoreStrokeStyle: ShapePath.DashLine
    property var linkUnderscoreDashPattern: [ 1, 4 ]
}

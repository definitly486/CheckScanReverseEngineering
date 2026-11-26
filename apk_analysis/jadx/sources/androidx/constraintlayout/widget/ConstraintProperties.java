package androidx.constraintlayout.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.fg;
import defpackage.me0;
import defpackage.n7;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

/* JADX INFO: loaded from: classes2.dex */
public class ConstraintProperties {
    public static final int BASELINE = 5;
    public static final int BOTTOM = 4;
    public static final int END = 7;
    public static final int LEFT = 1;
    public static final int MATCH_CONSTRAINT = 0;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    public static final int PARENT_ID = 0;
    public static final int RIGHT = 2;
    public static final int START = 6;
    public static final int TOP = 3;
    public static final int UNSET = -1;
    public static final int WRAP_CONTENT = -2;
    ConstraintLayout.LayoutParams mParams;
    View mView;

    public ConstraintProperties(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ConstraintLayout.LayoutParams)) {
            n7.g("Only children of ConstraintLayout.LayoutParams supported");
            throw null;
        }
        this.mParams = (ConstraintLayout.LayoutParams) layoutParams;
        this.mView = view;
    }

    private String sideToString(int i) {
        switch (i) {
            case 1:
                return TtmlNode.LEFT;
            case 2:
                return TtmlNode.RIGHT;
            case 3:
                return "top";
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return TtmlNode.START;
            case 7:
                return TtmlNode.END;
            default:
                return StringUtils.UNDEFINED;
        }
    }

    public ConstraintProperties addToHorizontalChain(int i, int i2) {
        connect(1, i, i == 0 ? 1 : 2, 0);
        connect(2, i2, i2 == 0 ? 2 : 1, 0);
        if (i != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i)).connect(2, this.mView.getId(), 1, 0);
        }
        if (i2 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i2)).connect(1, this.mView.getId(), 2, 0);
        }
        return this;
    }

    public ConstraintProperties addToHorizontalChainRTL(int i, int i2) {
        connect(6, i, i == 0 ? 6 : 7, 0);
        connect(7, i2, i2 == 0 ? 7 : 6, 0);
        if (i != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i)).connect(7, this.mView.getId(), 6, 0);
        }
        if (i2 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i2)).connect(6, this.mView.getId(), 7, 0);
        }
        return this;
    }

    public ConstraintProperties addToVerticalChain(int i, int i2) {
        connect(3, i, i == 0 ? 3 : 4, 0);
        connect(4, i2, i2 == 0 ? 4 : 3, 0);
        if (i != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i)).connect(4, this.mView.getId(), 3, 0);
        }
        if (i2 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i2)).connect(3, this.mView.getId(), 4, 0);
        }
        return this;
    }

    public ConstraintProperties alpha(float f) {
        this.mView.setAlpha(f);
        return this;
    }

    public void apply() {
    }

    public ConstraintProperties center(int i, int i2, int i3, int i4, int i5, int i6, float f) {
        if (i3 < 0) {
            fg.c("margin must be > 0");
            return null;
        }
        if (i6 < 0) {
            fg.c("margin must be > 0");
            return null;
        }
        if (f <= 0.0f || f > 1.0f) {
            fg.c("bias must be between 0 and 1 inclusive");
            return null;
        }
        if (i2 == 1 || i2 == 2) {
            connect(1, i, i2, i3);
            connect(2, i4, i5, i6);
            this.mParams.horizontalBias = f;
            return this;
        }
        if (i2 == 6 || i2 == 7) {
            connect(6, i, i2, i3);
            connect(7, i4, i5, i6);
            this.mParams.horizontalBias = f;
            return this;
        }
        connect(3, i, i2, i3);
        connect(4, i4, i5, i6);
        this.mParams.verticalBias = f;
        return this;
    }

    public ConstraintProperties centerHorizontally(int i) {
        if (i == 0) {
            center(0, 1, 0, 0, 2, 0, 0.5f);
            return this;
        }
        center(i, 2, 0, i, 1, 0, 0.5f);
        return this;
    }

    public ConstraintProperties centerHorizontallyRtl(int i) {
        if (i == 0) {
            center(0, 6, 0, 0, 7, 0, 0.5f);
            return this;
        }
        center(i, 7, 0, i, 6, 0, 0.5f);
        return this;
    }

    public ConstraintProperties centerVertically(int i) {
        if (i == 0) {
            center(0, 3, 0, 0, 4, 0, 0.5f);
            return this;
        }
        center(i, 4, 0, i, 3, 0, 0.5f);
        return this;
    }

    public ConstraintProperties connect(int i, int i2, int i3, int i4) {
        ConstraintLayout.LayoutParams layoutParams;
        ConstraintLayout.LayoutParams layoutParams2;
        ConstraintLayout.LayoutParams layoutParams3;
        ConstraintLayout.LayoutParams layoutParams4;
        ConstraintLayout.LayoutParams layoutParams5;
        ConstraintLayout.LayoutParams layoutParams6;
        ConstraintLayout.LayoutParams layoutParams7;
        switch (i) {
            case 1:
                if (i3 == 1) {
                    layoutParams = this.mParams;
                    layoutParams.leftToLeft = i2;
                    layoutParams.leftToRight = -1;
                } else {
                    if (i3 != 2) {
                        fg.c(me0.d(new StringBuilder("Left to "), sideToString(i3), " undefined"));
                        return null;
                    }
                    layoutParams = this.mParams;
                    layoutParams.leftToRight = i2;
                    layoutParams.leftToLeft = -1;
                }
                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = i4;
                return this;
            case 2:
                if (i3 == 1) {
                    layoutParams2 = this.mParams;
                    layoutParams2.rightToLeft = i2;
                    layoutParams2.rightToRight = -1;
                } else {
                    if (i3 != 2) {
                        fg.c(me0.d(new StringBuilder("right to "), sideToString(i3), " undefined"));
                        return null;
                    }
                    layoutParams2 = this.mParams;
                    layoutParams2.rightToRight = i2;
                    layoutParams2.rightToLeft = -1;
                }
                ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin = i4;
                return this;
            case 3:
                if (i3 == 3) {
                    layoutParams3 = this.mParams;
                    layoutParams3.topToTop = i2;
                    layoutParams3.topToBottom = -1;
                    layoutParams3.baselineToBaseline = -1;
                    layoutParams3.baselineToTop = -1;
                    layoutParams3.baselineToBottom = -1;
                } else {
                    if (i3 != 4) {
                        fg.c(me0.d(new StringBuilder("right to "), sideToString(i3), " undefined"));
                        return null;
                    }
                    layoutParams3 = this.mParams;
                    layoutParams3.topToBottom = i2;
                    layoutParams3.topToTop = -1;
                    layoutParams3.baselineToBaseline = -1;
                    layoutParams3.baselineToTop = -1;
                    layoutParams3.baselineToBottom = -1;
                }
                ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin = i4;
                return this;
            case 4:
                if (i3 == 4) {
                    layoutParams4 = this.mParams;
                    layoutParams4.bottomToBottom = i2;
                    layoutParams4.bottomToTop = -1;
                    layoutParams4.baselineToBaseline = -1;
                    layoutParams4.baselineToTop = -1;
                    layoutParams4.baselineToBottom = -1;
                } else {
                    if (i3 != 3) {
                        fg.c(me0.d(new StringBuilder("right to "), sideToString(i3), " undefined"));
                        return null;
                    }
                    layoutParams4 = this.mParams;
                    layoutParams4.bottomToTop = i2;
                    layoutParams4.bottomToBottom = -1;
                    layoutParams4.baselineToBaseline = -1;
                    layoutParams4.baselineToTop = -1;
                    layoutParams4.baselineToBottom = -1;
                }
                ((ViewGroup.MarginLayoutParams) layoutParams4).bottomMargin = i4;
                return this;
            case 5:
                if (i3 == 5) {
                    layoutParams5 = this.mParams;
                    layoutParams5.baselineToBaseline = i2;
                    layoutParams5.bottomToBottom = -1;
                    layoutParams5.bottomToTop = -1;
                    layoutParams5.topToTop = -1;
                    layoutParams5.topToBottom = -1;
                } else if (i3 == 3) {
                    layoutParams5 = this.mParams;
                    layoutParams5.baselineToTop = i2;
                    layoutParams5.bottomToBottom = -1;
                    layoutParams5.bottomToTop = -1;
                    layoutParams5.topToTop = -1;
                    layoutParams5.topToBottom = -1;
                } else {
                    if (i3 != 4) {
                        fg.c(me0.d(new StringBuilder("right to "), sideToString(i3), " undefined"));
                        return null;
                    }
                    layoutParams5 = this.mParams;
                    layoutParams5.baselineToBottom = i2;
                    layoutParams5.bottomToBottom = -1;
                    layoutParams5.bottomToTop = -1;
                    layoutParams5.topToTop = -1;
                    layoutParams5.topToBottom = -1;
                }
                layoutParams5.baselineMargin = i4;
                return this;
            case 6:
                if (i3 == 6) {
                    layoutParams6 = this.mParams;
                    layoutParams6.startToStart = i2;
                    layoutParams6.startToEnd = -1;
                } else {
                    if (i3 != 7) {
                        fg.c(me0.d(new StringBuilder("right to "), sideToString(i3), " undefined"));
                        return null;
                    }
                    layoutParams6 = this.mParams;
                    layoutParams6.startToEnd = i2;
                    layoutParams6.startToStart = -1;
                }
                layoutParams6.setMarginStart(i4);
                return this;
            case 7:
                if (i3 == 7) {
                    layoutParams7 = this.mParams;
                    layoutParams7.endToEnd = i2;
                    layoutParams7.endToStart = -1;
                } else {
                    if (i3 != 6) {
                        fg.c(me0.d(new StringBuilder("right to "), sideToString(i3), " undefined"));
                        return null;
                    }
                    layoutParams7 = this.mParams;
                    layoutParams7.endToStart = i2;
                    layoutParams7.endToEnd = -1;
                }
                layoutParams7.setMarginEnd(i4);
                return this;
            default:
                StringBuilder sb = new StringBuilder();
                sb.append(sideToString(i));
                sb.append(" to ");
                fg.c(me0.d(sb, sideToString(i3), " unknown"));
                return null;
        }
    }

    public ConstraintProperties constrainDefaultHeight(int i) {
        this.mParams.matchConstraintDefaultHeight = i;
        return this;
    }

    public ConstraintProperties constrainDefaultWidth(int i) {
        this.mParams.matchConstraintDefaultWidth = i;
        return this;
    }

    public ConstraintProperties constrainHeight(int i) {
        ((ViewGroup.MarginLayoutParams) this.mParams).height = i;
        return this;
    }

    public ConstraintProperties constrainMaxHeight(int i) {
        this.mParams.matchConstraintMaxHeight = i;
        return this;
    }

    public ConstraintProperties constrainMaxWidth(int i) {
        this.mParams.matchConstraintMaxWidth = i;
        return this;
    }

    public ConstraintProperties constrainMinHeight(int i) {
        this.mParams.matchConstraintMinHeight = i;
        return this;
    }

    public ConstraintProperties constrainMinWidth(int i) {
        this.mParams.matchConstraintMinWidth = i;
        return this;
    }

    public ConstraintProperties constrainWidth(int i) {
        ((ViewGroup.MarginLayoutParams) this.mParams).width = i;
        return this;
    }

    public ConstraintProperties dimensionRatio(String str) {
        this.mParams.dimensionRatio = str;
        return this;
    }

    public ConstraintProperties elevation(float f) {
        this.mView.setElevation(f);
        return this;
    }

    public ConstraintProperties goneMargin(int i, int i2) {
        switch (i) {
            case 1:
                this.mParams.goneLeftMargin = i2;
                return this;
            case 2:
                this.mParams.goneRightMargin = i2;
                return this;
            case 3:
                this.mParams.goneTopMargin = i2;
                return this;
            case 4:
                this.mParams.goneBottomMargin = i2;
                return this;
            case 5:
                fg.c("baseline does not support margins");
                return null;
            case 6:
                this.mParams.goneStartMargin = i2;
                return this;
            case 7:
                this.mParams.goneEndMargin = i2;
                return this;
            default:
                fg.c("unknown constraint");
                return null;
        }
    }

    public ConstraintProperties horizontalBias(float f) {
        this.mParams.horizontalBias = f;
        return this;
    }

    public ConstraintProperties horizontalChainStyle(int i) {
        this.mParams.horizontalChainStyle = i;
        return this;
    }

    public ConstraintProperties horizontalWeight(float f) {
        this.mParams.horizontalWeight = f;
        return this;
    }

    public ConstraintProperties margin(int i, int i2) {
        switch (i) {
            case 1:
                ((ViewGroup.MarginLayoutParams) this.mParams).leftMargin = i2;
                return this;
            case 2:
                ((ViewGroup.MarginLayoutParams) this.mParams).rightMargin = i2;
                return this;
            case 3:
                ((ViewGroup.MarginLayoutParams) this.mParams).topMargin = i2;
                return this;
            case 4:
                ((ViewGroup.MarginLayoutParams) this.mParams).bottomMargin = i2;
                return this;
            case 5:
                fg.c("baseline does not support margins");
                return null;
            case 6:
                this.mParams.setMarginStart(i2);
                return this;
            case 7:
                this.mParams.setMarginEnd(i2);
                return this;
            default:
                fg.c("unknown constraint");
                return null;
        }
    }

    public ConstraintProperties removeConstraints(int i) {
        switch (i) {
            case 1:
                ConstraintLayout.LayoutParams layoutParams = this.mParams;
                layoutParams.leftToRight = -1;
                layoutParams.leftToLeft = -1;
                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = -1;
                layoutParams.goneLeftMargin = Integer.MIN_VALUE;
                return this;
            case 2:
                ConstraintLayout.LayoutParams layoutParams2 = this.mParams;
                layoutParams2.rightToRight = -1;
                layoutParams2.rightToLeft = -1;
                ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin = -1;
                layoutParams2.goneRightMargin = Integer.MIN_VALUE;
                return this;
            case 3:
                ConstraintLayout.LayoutParams layoutParams3 = this.mParams;
                layoutParams3.topToBottom = -1;
                layoutParams3.topToTop = -1;
                ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin = -1;
                layoutParams3.goneTopMargin = Integer.MIN_VALUE;
                return this;
            case 4:
                ConstraintLayout.LayoutParams layoutParams4 = this.mParams;
                layoutParams4.bottomToTop = -1;
                layoutParams4.bottomToBottom = -1;
                ((ViewGroup.MarginLayoutParams) layoutParams4).bottomMargin = -1;
                layoutParams4.goneBottomMargin = Integer.MIN_VALUE;
                return this;
            case 5:
                this.mParams.baselineToBaseline = -1;
                return this;
            case 6:
                ConstraintLayout.LayoutParams layoutParams5 = this.mParams;
                layoutParams5.startToEnd = -1;
                layoutParams5.startToStart = -1;
                layoutParams5.setMarginStart(-1);
                this.mParams.goneStartMargin = Integer.MIN_VALUE;
                return this;
            case 7:
                ConstraintLayout.LayoutParams layoutParams6 = this.mParams;
                layoutParams6.endToStart = -1;
                layoutParams6.endToEnd = -1;
                layoutParams6.setMarginEnd(-1);
                this.mParams.goneEndMargin = Integer.MIN_VALUE;
                return this;
            default:
                fg.c("unknown constraint");
                return null;
        }
    }

    public ConstraintProperties removeFromHorizontalChain() {
        ConstraintLayout.LayoutParams layoutParams = this.mParams;
        int i = layoutParams.leftToRight;
        int i2 = layoutParams.rightToLeft;
        if (i != -1 || i2 != -1) {
            ConstraintProperties constraintProperties = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i));
            ConstraintProperties constraintProperties2 = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i2));
            ConstraintLayout.LayoutParams layoutParams2 = this.mParams;
            if (i != -1 && i2 != -1) {
                constraintProperties.connect(2, i2, 1, 0);
                constraintProperties2.connect(1, i, 2, 0);
            } else if (i != -1 || i2 != -1) {
                int i3 = layoutParams2.rightToRight;
                if (i3 != -1) {
                    constraintProperties.connect(2, i3, 2, 0);
                } else {
                    int i4 = layoutParams2.leftToLeft;
                    if (i4 != -1) {
                        constraintProperties2.connect(1, i4, 1, 0);
                    }
                }
            }
            removeConstraints(1);
            removeConstraints(2);
            return this;
        }
        int i5 = layoutParams.startToEnd;
        int i6 = layoutParams.endToStart;
        if (i5 != -1 || i6 != -1) {
            ConstraintProperties constraintProperties3 = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i5));
            ConstraintProperties constraintProperties4 = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i6));
            ConstraintLayout.LayoutParams layoutParams3 = this.mParams;
            if (i5 != -1 && i6 != -1) {
                constraintProperties3.connect(7, i6, 6, 0);
                constraintProperties4.connect(6, i, 7, 0);
            } else if (i != -1 || i6 != -1) {
                int i7 = layoutParams3.rightToRight;
                if (i7 != -1) {
                    constraintProperties3.connect(7, i7, 7, 0);
                } else {
                    int i8 = layoutParams3.leftToLeft;
                    if (i8 != -1) {
                        constraintProperties4.connect(6, i8, 6, 0);
                    }
                }
            }
        }
        removeConstraints(6);
        removeConstraints(7);
        return this;
    }

    public ConstraintProperties removeFromVerticalChain() {
        ConstraintLayout.LayoutParams layoutParams = this.mParams;
        int i = layoutParams.topToBottom;
        int i2 = layoutParams.bottomToTop;
        if (i != -1 || i2 != -1) {
            ConstraintProperties constraintProperties = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i));
            ConstraintProperties constraintProperties2 = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i2));
            ConstraintLayout.LayoutParams layoutParams2 = this.mParams;
            if (i != -1 && i2 != -1) {
                constraintProperties.connect(4, i2, 3, 0);
                constraintProperties2.connect(3, i, 4, 0);
            } else if (i != -1 || i2 != -1) {
                int i3 = layoutParams2.bottomToBottom;
                if (i3 != -1) {
                    constraintProperties.connect(4, i3, 4, 0);
                } else {
                    int i4 = layoutParams2.topToTop;
                    if (i4 != -1) {
                        constraintProperties2.connect(3, i4, 3, 0);
                    }
                }
            }
        }
        removeConstraints(3);
        removeConstraints(4);
        return this;
    }

    public ConstraintProperties rotation(float f) {
        this.mView.setRotation(f);
        return this;
    }

    public ConstraintProperties rotationX(float f) {
        this.mView.setRotationX(f);
        return this;
    }

    public ConstraintProperties rotationY(float f) {
        this.mView.setRotationY(f);
        return this;
    }

    public ConstraintProperties scaleX(float f) {
        this.mView.setScaleY(f);
        return this;
    }

    public ConstraintProperties scaleY(float f) {
        return this;
    }

    public ConstraintProperties transformPivot(float f, float f2) {
        this.mView.setPivotX(f);
        this.mView.setPivotY(f2);
        return this;
    }

    public ConstraintProperties transformPivotX(float f) {
        this.mView.setPivotX(f);
        return this;
    }

    public ConstraintProperties transformPivotY(float f) {
        this.mView.setPivotY(f);
        return this;
    }

    public ConstraintProperties translation(float f, float f2) {
        this.mView.setTranslationX(f);
        this.mView.setTranslationY(f2);
        return this;
    }

    public ConstraintProperties translationX(float f) {
        this.mView.setTranslationX(f);
        return this;
    }

    public ConstraintProperties translationY(float f) {
        this.mView.setTranslationY(f);
        return this;
    }

    public ConstraintProperties translationZ(float f) {
        this.mView.setTranslationZ(f);
        return this;
    }

    public ConstraintProperties verticalBias(float f) {
        this.mParams.verticalBias = f;
        return this;
    }

    public ConstraintProperties verticalChainStyle(int i) {
        this.mParams.verticalChainStyle = i;
        return this;
    }

    public ConstraintProperties verticalWeight(float f) {
        this.mParams.verticalWeight = f;
        return this;
    }

    public ConstraintProperties visibility(int i) {
        this.mView.setVisibility(i);
        return this;
    }

    public ConstraintProperties centerHorizontally(int i, int i2, int i3, int i4, int i5, int i6, float f) {
        connect(1, i, i2, i3);
        connect(2, i4, i5, i6);
        this.mParams.horizontalBias = f;
        return this;
    }

    public ConstraintProperties centerHorizontallyRtl(int i, int i2, int i3, int i4, int i5, int i6, float f) {
        connect(6, i, i2, i3);
        connect(7, i4, i5, i6);
        this.mParams.horizontalBias = f;
        return this;
    }

    public ConstraintProperties centerVertically(int i, int i2, int i3, int i4, int i5, int i6, float f) {
        connect(3, i, i2, i3);
        connect(4, i4, i5, i6);
        this.mParams.verticalBias = f;
        return this;
    }
}

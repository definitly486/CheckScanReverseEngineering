package androidx.constraintlayout.core.dsl;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.ad2;

/* JADX INFO: loaded from: classes2.dex */
public class KeyPosition extends Keys {
    private int mFrame;
    private String mTarget;
    private String mTransitionEasing = null;
    private float mPercentWidth = Float.NaN;
    private float mPercentHeight = Float.NaN;
    private float mPercentX = Float.NaN;
    private float mPercentY = Float.NaN;
    private Type mPositionType = Type.CARTESIAN;

    public enum Type {
        CARTESIAN,
        SCREEN,
        PATH
    }

    public KeyPosition(String str, int i) {
        this.mTarget = null;
        this.mFrame = 0;
        this.mTarget = str;
        this.mFrame = i;
    }

    public int getFrames() {
        return this.mFrame;
    }

    public float getPercentHeight() {
        return this.mPercentHeight;
    }

    public float getPercentWidth() {
        return this.mPercentWidth;
    }

    public float getPercentX() {
        return this.mPercentX;
    }

    public float getPercentY() {
        return this.mPercentY;
    }

    public Type getPositionType() {
        return this.mPositionType;
    }

    public String getTarget() {
        return this.mTarget;
    }

    public String getTransitionEasing() {
        return this.mTransitionEasing;
    }

    public void setFrames(int i) {
        this.mFrame = i;
    }

    public void setPercentHeight(float f) {
        this.mPercentHeight = f;
    }

    public void setPercentWidth(float f) {
        this.mPercentWidth = f;
    }

    public void setPercentX(float f) {
        this.mPercentX = f;
    }

    public void setPercentY(float f) {
        this.mPercentY = f;
    }

    public void setPositionType(Type type) {
        this.mPositionType = type;
    }

    public void setTarget(String str) {
        this.mTarget = str;
    }

    public void setTransitionEasing(String str) {
        this.mTransitionEasing = str;
    }

    public String toString() {
        StringBuilder sbC = ad2.c("KeyPositions:{\n");
        append(sbC, TypedValues.AttributesType.S_TARGET, this.mTarget);
        sbC.append("frame:");
        sbC.append(this.mFrame);
        sbC.append(",\n");
        if (this.mPositionType != null) {
            sbC.append("type:'");
            sbC.append(this.mPositionType);
            sbC.append("',\n");
        }
        append(sbC, "easing", this.mTransitionEasing);
        append(sbC, "percentX", this.mPercentX);
        append(sbC, "percentY", this.mPercentY);
        append(sbC, "percentWidth", this.mPercentWidth);
        append(sbC, "percentHeight", this.mPercentHeight);
        sbC.append("},\n");
        return sbC.toString();
    }
}

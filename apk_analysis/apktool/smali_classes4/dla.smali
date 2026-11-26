.class public final Ldla;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# virtual methods
.method public final getChangingConfigurations()I
    .locals 0

    iget p0, p0, Ldla;->a:I

    return p0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/base/zah;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/base/zah;-><init>(Ldla;)V

    return-object v0
.end method

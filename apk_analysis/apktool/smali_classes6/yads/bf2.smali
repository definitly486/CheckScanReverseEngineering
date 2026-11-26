.class public final Lyads/bf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/cf2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Typeface;
    .locals 0

    .line 19
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(I)Landroid/graphics/Typeface;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lyads/cf2;->a(I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public final b()Landroid/graphics/Typeface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Landroid/graphics/Typeface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Landroid/graphics/Typeface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

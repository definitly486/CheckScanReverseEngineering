.class public final synthetic Lyg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;
.implements Lyads/t70;
.implements Lcom/my/tracker/obfuscated/f2;


# direct methods
.method public static bridge synthetic b()Landroid/graphics/BlendMode;
    .locals 1

    sget-object v0, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/my/tracker/obfuscated/t2;->e()Lcom/my/tracker/obfuscated/n2;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Landroidx/camera/core/ImageCapture;->e(Ljava/util/List;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public onInitializationCompleted()V
    .locals 0

    invoke-static {}, Lyads/ah5;->a()V

    return-void
.end method

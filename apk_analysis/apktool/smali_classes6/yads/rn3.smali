.class public final Lyads/rn3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qn3;


# instance fields
.field public final a:Lyads/yn;


# direct methods
.method public constructor <init>(Lyads/yn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/rn3;->a:Lyads/yn;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/pn3;)V
    .locals 0

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    sget v0, Lyads/ya;->b:I

    iget-object v0, p0, Lyads/rn3;->a:Lyads/yn;

    invoke-static {v0}, Lyads/ya;->a(Lyads/nz;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lyads/rn3;->a:Lyads/yn;

    invoke-virtual {p0}, Lyads/pp;->i()V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    sget v0, Lyads/ya;->b:I

    iget-object v0, p0, Lyads/rn3;->a:Lyads/yn;

    invoke-static {v0}, Lyads/ya;->a(Lyads/nz;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lyads/rn3;->a:Lyads/yn;

    invoke-virtual {p0}, Lyads/pp;->k()V

    :cond_0
    return-void
.end method

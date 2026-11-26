.class public abstract Lyads/a31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/xq3;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lyads/y21;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/y21;

    iget-object p0, p0, Lyads/y21;->a:Lyads/n21;

    return-object p0

    :cond_0
    instance-of v0, p0, Lyads/w21;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/w21;

    iget-object p0, p0, Lyads/w21;->a:Lyads/td1;

    return-object p0

    :cond_1
    instance-of v0, p0, Lyads/x21;

    if-eqz v0, :cond_2

    check-cast p0, Lyads/x21;

    iget-object p0, p0, Lyads/x21;->a:Lyads/sy1;

    return-object p0

    :cond_2
    instance-of v0, p0, Lyads/z21;

    if-eqz v0, :cond_3

    check-cast p0, Lyads/z21;

    iget-object p0, p0, Lyads/z21;->a:Lyads/u12;

    return-object p0

    :cond_3
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

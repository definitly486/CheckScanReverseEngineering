.class public final Lyads/sh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly22;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lyads/i90;

    invoke-direct {v0}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v1

    sget-object v2, Lqo2;->a:Loi2;

    sget-object v2, Lsh2;->c:Lsh2;

    invoke-static {v1, v2}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object v1

    invoke-interface {v1, v0}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v0

    invoke-static {v0}, Lz22;->a(Lo22;)Lkz1;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/sh;->a:Ly22;

    return-void
.end method

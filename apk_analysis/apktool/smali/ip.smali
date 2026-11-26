.class public final Lip;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkz1;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v0

    sget-object v1, Lqo2;->a:Loi2;

    invoke-static {v0, v1}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object v0

    new-instance v1, Lip$a;

    sget-object v2, Ls22$a;->b:Ls22$a;

    invoke-direct {v1, v2}, Lb0;-><init>(Lo22$b;)V

    invoke-interface {v0, v1}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v0

    invoke-static {v0}, Lz22;->a(Lo22;)Lkz1;

    move-result-object v0

    iput-object v0, p0, Lip;->a:Lkz1;

    return-void
.end method

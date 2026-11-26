.class public final Lgx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfx;


# instance fields
.field public final a:Lo87;


# direct methods
.method public constructor <init>(Lo87;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgx;->a:Lo87;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object p0, p0, Lgx;->a:Lo87;

    sget-object v0, Lcom/warefly/checkscan/presentation/e;->a:Lcom/warefly/checkscan/presentation/e;

    invoke-virtual {p0, v0}, Lo87;->g(Ldf7;)V

    return-void
.end method

.method public final c()V
    .locals 2

    new-instance v0, Ltf8;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltf8;-><init>(I)V

    iget-object p0, p0, Lgx;->a:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

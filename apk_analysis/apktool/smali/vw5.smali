.class public final Lvw5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lfh8;

.field public final b:Lmu0;

.field public final c:Lz81;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lvw5$a;->f:Lvw5$a;

    invoke-static {v0}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object v0

    iput-object v0, p0, Lvw5;->a:Lfh8;

    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v2, v0, v0, v1}, Ll91;->a(ILcu0;Lnl3;I)Lmu0;

    move-result-object v0

    iput-object v0, p0, Lvw5;->b:Lmu0;

    new-instance v1, Lz81;

    invoke-direct {v1, v0, v2}, Lz81;-><init>(Lqz6;Z)V

    iput-object v1, p0, Lvw5;->c:Lz81;

    return-void
.end method

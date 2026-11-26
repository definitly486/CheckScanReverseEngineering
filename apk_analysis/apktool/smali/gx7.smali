.class public final Lgx7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lvw;

.field public final b:Lmw5;


# direct methods
.method public constructor <init>(Lvw;Lmw5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgx7;->a:Lvw;

    iput-object p2, p0, Lgx7;->b:Lmw5;

    return-void
.end method


# virtual methods
.method public final a(Ldw1;)Lde3;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lfx7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lfx7;-><init>(Lgx7;Ldw1;Le02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p0

    return-object p0
.end method

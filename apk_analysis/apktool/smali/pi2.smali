.class public final Lpi2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lie7;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lpk9;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Le00;

.field public final d:Lf13;

.field public final e:Leh8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ld39;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lpi2;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Le00;Lpk9;Lf13;Leh8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpi2;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lpi2;->c:Le00;

    iput-object p3, p0, Lpi2;->a:Lpk9;

    iput-object p4, p0, Lpi2;->d:Lf13;

    iput-object p5, p0, Lpi2;->e:Leh8;

    return-void
.end method


# virtual methods
.method public final a(Lhz;Lsy;Lf39;)V
    .locals 6

    new-instance v0, Lc01;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lc01;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, v1, Lpi2;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

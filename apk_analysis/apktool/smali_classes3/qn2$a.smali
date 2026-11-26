.class public final Lqn2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqn2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lke4;

.field public final b:D

.field public final c:J

.field public final d:J

.field public final e:Lgx2;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lw93;->b:Lke4;

    iput-object v0, p0, Lqn2$a;->a:Lke4;

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    iput-wide v0, p0, Lqn2$a;->b:D

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lqn2$a;->c:J

    const-wide/32 v0, 0xfa00000

    iput-wide v0, p0, Lqn2$a;->d:J

    sget-object v0, Lgx2;->b:Lgx2;

    iput-object v0, p0, Lqn2$a;->e:Lgx2;

    return-void
.end method

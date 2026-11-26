.class public final Lgv5$c;
.super Lb57;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgv5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final c:Lj95;

.field public final d:J


# direct methods
.method public constructor <init>(Lj95;J)V
    .locals 0

    invoke-direct {p0}, Lb57;-><init>()V

    iput-object p1, p0, Lgv5$c;->c:Lj95;

    iput-wide p2, p0, Lgv5$c;->d:J

    return-void
.end method


# virtual methods
.method public final L()Lwu0;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot read raw response body of a converted body."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final o()J
    .locals 2

    iget-wide v0, p0, Lgv5$c;->d:J

    return-wide v0
.end method

.method public final p()Lj95;
    .locals 0

    iget-object p0, p0, Lgv5$c;->c:Lj95;

    return-object p0
.end method

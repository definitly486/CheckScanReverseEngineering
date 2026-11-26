.class public final Lmv3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lwu0;

.field public b:J


# direct methods
.method public constructor <init>(Lwu0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmv3;->a:Lwu0;

    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Lmv3;->b:J

    return-void
.end method

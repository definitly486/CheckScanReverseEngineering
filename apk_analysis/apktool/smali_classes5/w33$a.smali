.class public final Lw33$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li00;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw33;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# virtual methods
.method public final a()Lw33;
    .locals 2

    new-instance p0, Lw33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lw33;->a:Ljava/util/Random;

    const-wide v0, 0x1bf08eb000L

    iput-wide v0, p0, Lw33;->b:J

    const-wide v0, 0x3ff999999999999aL    # 1.6

    iput-wide v0, p0, Lw33;->c:D

    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, Lw33;->d:D

    const-wide/32 v0, 0x3b9aca00

    iput-wide v0, p0, Lw33;->e:J

    return-object p0
.end method

.class public final Lgv5$b$a;
.super Lqj3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgv5$b;-><init>(Lb57;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lgv5$b;


# direct methods
.method public constructor <init>(Lgv5$b;Lwu0;)V
    .locals 0

    iput-object p1, p0, Lgv5$b$a;->c:Lgv5$b;

    invoke-direct {p0, p2}, Lqj3;-><init>(Lv48;)V

    return-void
.end method


# virtual methods
.method public final t0(Lbu0;J)J
    .locals 0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lqj3;->t0(Lbu0;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lgv5$b$a;->c:Lgv5$b;

    iput-object p1, p0, Lgv5$b;->e:Ljava/io/IOException;

    throw p1
.end method

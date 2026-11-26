.class public final Lgv5$b;
.super Lb57;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgv5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final c:Lb57;

.field public final d:Liy6;

.field public e:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lb57;)V
    .locals 1

    invoke-direct {p0}, Lb57;-><init>()V

    iput-object p1, p0, Lgv5$b;->c:Lb57;

    new-instance v0, Lgv5$b$a;

    invoke-virtual {p1}, Lb57;->L()Lwu0;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lgv5$b$a;-><init>(Lgv5$b;Lwu0;)V

    new-instance p1, Liy6;

    invoke-direct {p1, v0}, Liy6;-><init>(Lv48;)V

    iput-object p1, p0, Lgv5$b;->d:Liy6;

    return-void
.end method


# virtual methods
.method public final L()Lwu0;
    .locals 0

    iget-object p0, p0, Lgv5$b;->d:Liy6;

    return-object p0
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lgv5$b;->c:Lb57;

    invoke-virtual {p0}, Lb57;->close()V

    return-void
.end method

.method public final o()J
    .locals 2

    iget-object p0, p0, Lgv5$b;->c:Lb57;

    invoke-virtual {p0}, Lb57;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public final p()Lj95;
    .locals 0

    iget-object p0, p0, Lgv5$b;->c:Lb57;

    invoke-virtual {p0}, Lb57;->p()Lj95;

    move-result-object p0

    return-object p0
.end method

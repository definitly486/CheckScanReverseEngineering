.class public final Lyads/yv4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/nf6;

.field public final b:Lyads/wa6;

.field public final c:Lyads/cm4;

.field public final d:Lyads/ge6;

.field public final e:Lyads/xv4;


# direct methods
.method public constructor <init>(Lyads/nf6;Lyads/wa6;Lyads/cm4;Lyads/a15;)V
    .locals 1

    new-instance v0, Lyads/ge6;

    invoke-direct {v0, p3, p4}, Lyads/ge6;-><init>(Lyads/cm4;Lyads/a15;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/yv4;->a:Lyads/nf6;

    iput-object p2, p0, Lyads/yv4;->b:Lyads/wa6;

    iput-object p3, p0, Lyads/yv4;->c:Lyads/cm4;

    iput-object v0, p0, Lyads/yv4;->d:Lyads/ge6;

    new-instance p1, Lyads/xv4;

    invoke-direct {p1, p0}, Lyads/xv4;-><init>(Lyads/yv4;)V

    iput-object p1, p0, Lyads/yv4;->e:Lyads/xv4;

    return-void
.end method

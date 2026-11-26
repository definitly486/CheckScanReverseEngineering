.class public final Lyads/rp3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/bf5;

.field public final c:Lyads/x2;

.field public final d:I

.field public final e:Lyads/mo1;

.field public final f:Lyads/ph6;

.field public final g:Lyads/ve4;


# direct methods
.method public constructor <init>(Lyads/e4;Lyads/bf5;Lyads/x2;I)V
    .locals 3

    new-instance v0, Lyads/mo1;

    invoke-direct {v0}, Lyads/mo1;-><init>()V

    new-instance v1, Lyads/ph6;

    invoke-direct {v1}, Lyads/ph6;-><init>()V

    new-instance v2, Lyads/ve4;

    invoke-direct {v2}, Lyads/ve4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/rp3;->a:Lyads/e4;

    iput-object p2, p0, Lyads/rp3;->b:Lyads/bf5;

    iput-object p3, p0, Lyads/rp3;->c:Lyads/x2;

    iput p4, p0, Lyads/rp3;->d:I

    iput-object v0, p0, Lyads/rp3;->e:Lyads/mo1;

    iput-object v1, p0, Lyads/rp3;->f:Lyads/ph6;

    iput-object v2, p0, Lyads/rp3;->g:Lyads/ve4;

    return-void
.end method

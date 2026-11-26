.class public final Lyads/df6;
.super Lyads/bv5;
.source "SourceFile"


# instance fields
.field public final b:Lyads/os4;

.field public final c:Lyads/os4;

.field public d:I

.field public e:Z

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(Lyads/k06;)V
    .locals 1

    invoke-direct {p0, p1}, Lyads/bv5;-><init>(Lyads/k06;)V

    new-instance p1, Lyads/os4;

    sget-object v0, Lyads/qd4;->a:[B

    invoke-direct {p1, v0}, Lyads/os4;-><init>([B)V

    iput-object p1, p0, Lyads/df6;->b:Lyads/os4;

    new-instance p1, Lyads/os4;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lyads/os4;-><init>(I)V

    iput-object p1, p0, Lyads/df6;->c:Lyads/os4;

    return-void
.end method

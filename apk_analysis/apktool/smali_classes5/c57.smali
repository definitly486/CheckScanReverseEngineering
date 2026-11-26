.class public final Lc57;
.super Lb57;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lj95;

.field public final synthetic d:J

.field public final synthetic e:Lbu0;


# direct methods
.method public constructor <init>(Lj95;JLbu0;)V
    .locals 0

    iput-object p1, p0, Lc57;->c:Lj95;

    iput-wide p2, p0, Lc57;->d:J

    iput-object p4, p0, Lc57;->e:Lbu0;

    invoke-direct {p0}, Lb57;-><init>()V

    return-void
.end method


# virtual methods
.method public final L()Lwu0;
    .locals 0

    iget-object p0, p0, Lc57;->e:Lbu0;

    return-object p0
.end method

.method public final o()J
    .locals 2

    iget-wide v0, p0, Lc57;->d:J

    return-wide v0
.end method

.method public final p()Lj95;
    .locals 0

    iget-object p0, p0, Lc57;->c:Lj95;

    return-object p0
.end method

.class public final synthetic Lbia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lyads/x40;

.field public final synthetic c:Lyads/yr2;

.field public final synthetic d:Lyads/uo2;

.field public final synthetic e:Lyads/fs2;

.field public final synthetic f:Laia;


# direct methods
.method public synthetic constructor <init>(Lyads/x40;Lyads/yr2;Lyads/uo2;Lyads/fs2;Laia;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbia;->b:Lyads/x40;

    iput-object p2, p0, Lbia;->c:Lyads/yr2;

    iput-object p3, p0, Lbia;->d:Lyads/uo2;

    iput-object p4, p0, Lbia;->e:Lyads/fs2;

    iput-object p5, p0, Lbia;->f:Laia;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lbia;->e:Lyads/fs2;

    iget-object v1, p0, Lbia;->f:Laia;

    iget-object v2, p0, Lbia;->b:Lyads/x40;

    iget-object v3, p0, Lbia;->c:Lyads/yr2;

    iget-object p0, p0, Lbia;->d:Lyads/uo2;

    invoke-static {v2, v3, p0, v0, v1}, Lyads/yr2;->a(Lyads/x40;Lyads/yr2;Lyads/uo2;Lyads/fs2;Lll3;)Lj59;

    move-result-object p0

    return-object p0
.end method

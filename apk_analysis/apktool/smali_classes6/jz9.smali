.class public final synthetic Ljz9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/iz0;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lyads/vq0;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lyads/iz0;Ljava/lang/Object;Lyads/vq0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljz9;->b:Lyads/iz0;

    iput-object p2, p0, Ljz9;->c:Ljava/lang/Object;

    iput-object p3, p0, Ljz9;->d:Lyads/vq0;

    iput-object p4, p0, Ljz9;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ljz9;->e:Ljava/lang/String;

    check-cast p1, Lyads/u66;

    iget-object v1, p0, Ljz9;->b:Lyads/iz0;

    iget-object v2, p0, Ljz9;->c:Ljava/lang/Object;

    iget-object p0, p0, Ljz9;->d:Lyads/vq0;

    invoke-static {v1, v2, p0, v0, p1}, Lyads/iz0;->a(Lyads/iz0;Ljava/lang/Object;Lyads/vq0;Ljava/lang/String;Lyads/u66;)Lyads/u66;

    move-result-object p0

    return-object p0
.end method

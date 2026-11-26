.class public final synthetic Leo9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tp0;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lyads/b76;

.field public final synthetic d:Lnl3;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lyads/b76;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leo9;->b:Ljava/util/List;

    iput-object p2, p0, Leo9;->c:Lyads/b76;

    iput-object p3, p0, Leo9;->d:Lnl3;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Leo9;->c:Lyads/b76;

    iget-object v1, p0, Leo9;->d:Lnl3;

    iget-object p0, p0, Leo9;->b:Ljava/util/List;

    invoke-static {p0, v0, v1}, Lyads/b76;->a(Ljava/util/List;Lyads/b76;Lnl3;)V

    return-void
.end method

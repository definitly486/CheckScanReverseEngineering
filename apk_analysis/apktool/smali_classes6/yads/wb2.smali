.class public final Lyads/wb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/xb2;

.field public final synthetic c:Lyads/qb2;


# direct methods
.method public constructor <init>(Lyads/xb2;Lyads/qb2;Lyads/vq0;)V
    .locals 0

    iput-object p1, p0, Lyads/wb2;->b:Lyads/xb2;

    iput-object p2, p0, Lyads/wb2;->c:Lyads/qb2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lyads/wb2;->b:Lyads/xb2;

    iget-object p0, p0, Lyads/wb2;->c:Lyads/qb2;

    iget-object p0, p0, Lyads/qb2;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lyads/xb2;->a(Ljava/lang/String;)V

    return-void
.end method

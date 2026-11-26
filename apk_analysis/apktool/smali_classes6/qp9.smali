.class public final synthetic Lqp9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tp0;


# instance fields
.field public final synthetic b:Lyads/vq0;

.field public final synthetic c:Lyads/b26;


# direct methods
.method public synthetic constructor <init>(Lyads/vq0;Lyads/b26;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqp9;->b:Lyads/vq0;

    iput-object p2, p0, Lqp9;->c:Lyads/b26;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lqp9;->b:Lyads/vq0;

    iget-object p0, p0, Lqp9;->c:Lyads/b26;

    invoke-static {v0, p0}, Lyads/c26;->a(Lyads/vq0;Lyads/b26;)V

    return-void
.end method

.class public final synthetic Le8a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/s25;

.field public final synthetic c:Lyads/j5;


# direct methods
.method public synthetic constructor <init>(Lyads/s25;Lyads/j5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le8a;->b:Lyads/s25;

    iput-object p2, p0, Le8a;->c:Lyads/j5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Le8a;->b:Lyads/s25;

    iget-object p0, p0, Le8a;->c:Lyads/j5;

    invoke-static {v0, p0}, Lyads/s25;->a(Lyads/s25;Lyads/j5;)V

    return-void
.end method

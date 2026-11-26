.class public final synthetic Lfh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lgh2$a$a;

.field public final synthetic c:Lsy0;

.field public final synthetic d:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lgh2$a$a;Lsy0;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfh2;->b:Lgh2$a$a;

    iput-object p2, p0, Lfh2;->c:Lsy0;

    iput-object p3, p0, Lfh2;->d:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lfh2;->d:Ljava/lang/Throwable;

    iget-object v1, p0, Lfh2;->b:Lgh2$a$a;

    iget-object v1, v1, Lgh2$a$a;->b:Lgh2$a;

    iget-object p0, p0, Lfh2;->c:Lsy0;

    invoke-interface {p0, v1, v0}, Lsy0;->a(Lfy0;Ljava/lang/Throwable;)V

    return-void
.end method

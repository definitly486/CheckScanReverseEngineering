.class public final Lqz7$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqz7$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/lang/Throwable;

.field public final synthetic c:Lqz7$a;


# direct methods
.method public constructor <init>(Lqz7$a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqz7$a$a;->c:Lqz7$a;

    iput-object p2, p0, Lqz7$a$a;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lqz7$a$a;->c:Lqz7$a;

    iget-object v0, v0, Lqz7$a;->c:Lt08;

    iget-object p0, p0, Lqz7$a$a;->b:Ljava/lang/Throwable;

    invoke-interface {v0, p0}, Lt08;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

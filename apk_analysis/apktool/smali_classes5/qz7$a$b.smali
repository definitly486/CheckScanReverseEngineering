.class public final Lqz7$a$b;
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
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final synthetic c:Lqz7$a;


# direct methods
.method public constructor <init>(Lqz7$a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqz7$a$b;->c:Lqz7$a;

    iput-object p2, p0, Lqz7$a$b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lqz7$a$b;->c:Lqz7$a;

    iget-object v0, v0, Lqz7$a;->c:Lt08;

    iget-object p0, p0, Lqz7$a$b;->b:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lt08;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

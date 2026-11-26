.class public final Lpe7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lws6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lws6;"
    }
.end annotation


# instance fields
.field public final a:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Lf13;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Loe7;


# direct methods
.method public constructor <init>(Lws6;Lws6;Loe7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpe7;->a:Lws6;

    iput-object p2, p0, Lpe7;->b:Lws6;

    iput-object p3, p0, Lpe7;->c:Loe7;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lpe7;->a:Lws6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lpe7;->b:Lws6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf13;

    iget-object p0, p0, Lpe7;->c:Loe7;

    invoke-virtual {p0}, Loe7;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lje7;

    new-instance v2, Lob4;

    invoke-direct {v2, v0, v1, p0}, Lob4;-><init>(Landroid/content/Context;Lf13;Lje7;)V

    return-object v2
.end method

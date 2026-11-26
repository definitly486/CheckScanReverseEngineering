.class public final Lye7;
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


# direct methods
.method public constructor <init>(Lws6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lye7;->a:Lws6;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lye7;->a:Lws6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    sget v0, Lxe7;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lxe7;

    const-string v2, "com.google.android.datatransport.events"

    invoke-direct {v1, p0, v2, v0}, Lxe7;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v1
.end method

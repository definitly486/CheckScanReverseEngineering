.class public final Lna5;
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
.field public final a:Le64;

.field public final b:Lm62;


# direct methods
.method public constructor <init>(Le64;Lm62;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lna5;->a:Le64;

    iput-object p2, p0, Lna5;->b:Lm62;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lna5;->a:Le64;

    iget-object v0, v0, Le64;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lna5;->b:Lm62;

    invoke-virtual {p0}, Lm62;->get()Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Lma5;

    check-cast p0, Ll62;

    invoke-direct {v1, v0, p0}, Lma5;-><init>(Landroid/content/Context;Ll62;)V

    return-object v1
.end method

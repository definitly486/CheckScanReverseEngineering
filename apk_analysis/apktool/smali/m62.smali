.class public final Lm62;
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


# direct methods
.method public constructor <init>(Le64;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm62;->a:Le64;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lm62;->a:Le64;

    iget-object p0, p0, Le64;->a:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    new-instance v0, Lvp2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lc84;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ll62;

    invoke-direct {v2, p0, v0, v1}, Ll62;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

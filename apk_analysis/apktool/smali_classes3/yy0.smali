.class public final Lyy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnl3<",
        "Ljava/lang/Throwable;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lokhttp3/a;


# direct methods
.method public constructor <init>(Lokhttp3/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyy0;->b:Lokhttp3/a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lyy0;->b:Lokhttp3/a;

    invoke-interface {p0}, Lokhttp3/a;->cancel()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

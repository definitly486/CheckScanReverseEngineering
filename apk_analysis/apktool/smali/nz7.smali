.class public final Lnz7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxs6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lxs6<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/Object;


# instance fields
.field public volatile a:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnz7;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lnz7;->b:Ljava/lang/Object;

    sget-object v1, Lnz7;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnz7;->a:Lxs6;

    if-nez v0, :cond_0

    iget-object p0, p0, Lnz7;->b:Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lnz7;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lnz7;->a:Lxs6;

    :cond_1
    return-object v0
.end method

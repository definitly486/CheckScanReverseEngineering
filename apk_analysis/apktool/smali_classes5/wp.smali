.class public final Lwp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvp;


# instance fields
.field public final a:Lhi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhi0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lhi0;->i(Ljava/lang/Object;)Lhi0;

    move-result-object v0

    iput-object v0, p0, Lwp;->a:Lhi0;

    return-void
.end method


# virtual methods
.method public final a()Lhi0;
    .locals 0

    iget-object p0, p0, Lwp;->a:Lhi0;

    return-object p0
.end method

.method public final b(Z)V
    .locals 0

    iget-object p0, p0, Lwp;->a:Lhi0;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lhi0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

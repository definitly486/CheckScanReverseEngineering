.class public final Lyq5$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyq5$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final synthetic c:Lyq5$a;


# direct methods
.method public constructor <init>(Lyq5$a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyq5$a$c;->c:Lyq5$a;

    iput-object p2, p0, Lyq5$a$c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lyq5$a$c;->c:Lyq5$a;

    iget-object v0, v0, Lyq5$a;->b:Lls5;

    iget-object p0, p0, Lyq5$a$c;->b:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lls5;->onNext(Ljava/lang/Object;)V

    return-void
.end method

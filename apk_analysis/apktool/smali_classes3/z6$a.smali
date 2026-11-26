.class public final Lz6$a;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lyz2<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final a:Lkf4;

.field public final b:Z

.field public c:Le47;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le47<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkf4;Lyz2;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    const-string p3, "Argument must not be null"

    invoke-static {p1, p3}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkf4;

    iput-object p1, p0, Lz6$a;->a:Lkf4;

    iget-boolean p1, p2, Lyz2;->b:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lz6$a;->c:Le47;

    iput-boolean p1, p0, Lz6$a;->b:Z

    return-void
.end method

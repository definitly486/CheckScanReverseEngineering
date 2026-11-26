.class public final Lyads/pv4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:Lc31;


# direct methods
.method public constructor <init>(Lc31;)V
    .locals 0

    iput-object p1, p0, Lyads/pv4;->a:Lc31;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lyads/pv4;->a:Lc31;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lc31;->B(Ljava/lang/Object;Lps0;)V

    return-void
.end method

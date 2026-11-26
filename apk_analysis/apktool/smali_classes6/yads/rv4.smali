.class public final synthetic Lyads/rv4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:Lyads/ov4;


# direct methods
.method public constructor <init>(Lyads/ov4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/rv4;->a:Lyads/ov4;

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lyads/rv4;->a:Lyads/ov4;

    invoke-virtual {p0, p1}, Lyads/ov4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

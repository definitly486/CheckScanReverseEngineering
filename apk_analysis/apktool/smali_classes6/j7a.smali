.class public final synthetic Lj7a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:Lyads/qk2;


# direct methods
.method public synthetic constructor <init>(Lyads/qk2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj7a;->b:Lyads/qk2;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lj7a;->b:Lyads/qk2;

    invoke-virtual {p0, p1}, Lyads/qk2;->a(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

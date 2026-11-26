.class public final synthetic Lw3c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Libc;


# direct methods
.method public synthetic constructor <init>(Libc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3c;->b:Libc;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    const-string v0, "Service disconnected"

    iget-object p0, p0, Lw3c;->b:Libc;

    invoke-virtual {p0, v0}, Libc;->b(Ljava/lang/String;)V

    return-void
.end method

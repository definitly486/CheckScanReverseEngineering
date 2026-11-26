.class public final synthetic Lhi8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/tapjoy/TJSetUserIDListener;


# direct methods
.method public synthetic constructor <init>(Lcom/tapjoy/TJSetUserIDListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhi8;->b:Lcom/tapjoy/TJSetUserIDListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lhi8;->b:Lcom/tapjoy/TJSetUserIDListener;

    invoke-static {p0}, Lcom/tapjoy/TJUser;->c(Lcom/tapjoy/TJSetUserIDListener;)V

    return-void
.end method

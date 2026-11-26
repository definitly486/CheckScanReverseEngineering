.class public final synthetic Li8a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/s85;


# direct methods
.method public synthetic constructor <init>(Lyads/s85;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li8a;->b:Lyads/s85;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Li8a;->b:Lyads/s85;

    invoke-virtual {p0}, Lyads/s85;->b()V

    return-void
.end method

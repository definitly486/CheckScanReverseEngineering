.class public final synthetic Ld5a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/p25;

.field public final synthetic c:Lyads/np3;


# direct methods
.method public synthetic constructor <init>(Lyads/p25;Lyads/np3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld5a;->b:Lyads/p25;

    iput-object p2, p0, Ld5a;->c:Lyads/np3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ld5a;->b:Lyads/p25;

    iget-object p0, p0, Ld5a;->c:Lyads/np3;

    invoke-static {v0, p0}, Lyads/p25;->a(Lyads/p25;Lyads/np3;)V

    return-void
.end method

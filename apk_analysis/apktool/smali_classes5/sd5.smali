.class public final Lsd5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcs0;


# instance fields
.field public final a:Lyv0;


# direct methods
.method public constructor <init>(Lyv0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsd5;->a:Lyv0;

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lsd5;->a:Lyv0;

    return-object p0
.end method

.method public final id()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

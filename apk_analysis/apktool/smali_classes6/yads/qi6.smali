.class public final Lyads/qi6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ds;


# instance fields
.field public final a:Lyads/v75;


# direct methods
.method public constructor <init>(Lyads/v75;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/qi6;->a:Lyads/v75;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 10
    iget-object p0, p0, Lyads/qi6;->a:Lyads/v75;

    invoke-interface {p0, p1}, Lyads/v75;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lyads/hi6;)V
    .locals 0

    invoke-static {p1}, Lyads/pi6;->a(Lyads/hi6;)Lyads/z96;

    move-result-object p1

    iget-object p0, p0, Lyads/qi6;->a:Lyads/v75;

    invoke-interface {p0, p1}, Lyads/v75;->a(Lyads/z96;)V

    return-void
.end method

.class public final Lg6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg6$a;
    }
.end annotation


# instance fields
.field public final a:Lzs7;

.field public final b:Lfy6;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    sget-object v1, Lcu0;->DROP_OLDEST:Lcu0;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v0}, Lbt7;->b(IILcu0;I)Lzs7;

    move-result-object v0

    iput-object v0, p0, Lg6;->a:Lzs7;

    invoke-static {v0}, Lbf3;->a(Lvg5;)Lfy6;

    move-result-object v0

    iput-object v0, p0, Lg6;->b:Lfy6;

    return-void
.end method

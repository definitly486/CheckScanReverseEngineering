.class public final Lyads/ov4;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lc31;


# direct methods
.method public constructor <init>(Lc31;)V
    .locals 0

    iput-object p1, p0, Lyads/ov4;->b:Lc31;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/appset/AppSetIdInfo;

    iget-object p0, p0, Lyads/ov4;->b:Lc31;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc31;->B(Ljava/lang/Object;Lps0;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

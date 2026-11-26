.class public final Lkd$k;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lse;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lkd$k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkd$k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lkd$k;->f:Lkd$k;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lse;

    invoke-direct {p0}, Lse;-><init>()V

    return-object p0
.end method

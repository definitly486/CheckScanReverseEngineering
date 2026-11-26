.class public final Lxm9$d;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxm9;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lsha;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lxm9$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lxm9$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lxm9$d;->f:Lxm9$d;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance p0, Lsha;

    new-instance v0, Lnh5;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lnh5;-><init>(I)V

    new-instance v1, Lu49;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, v0, v1}, Lsha;-><init>(Lnh5;Lu49;)V

    return-object p0
.end method

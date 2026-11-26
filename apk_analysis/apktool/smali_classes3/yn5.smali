.class public final Lyn5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk29;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyn5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk29<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final b:Lyn5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyn5<",
            "*>;"
        }
    .end annotation
.end field

.field public static final c:Lyn5$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyn5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyn5;->b:Lyn5;

    new-instance v0, Lyn5$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyn5;->c:Lyn5$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ll24;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

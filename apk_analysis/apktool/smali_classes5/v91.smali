.class public final Lv91;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lv91;


# instance fields
.field public final a:Lfr;

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv91;

    invoke-direct {v0}, Lv91;-><init>()V

    sput-object v0, Lv91;->c:Lv91;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfr;

    invoke-direct {v0}, Lfr;-><init>()V

    iput-object v0, p0, Lv91;->a:Lfr;

    return-void
.end method

.class public final Lef9$a;
.super Lef9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lef9$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lef9$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lef9$a;->a:Lef9$a;

    return-void
.end method

.class public final Lne7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lne7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Luu1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Luu1;

    invoke-direct {v0}, Luu1;-><init>()V

    sput-object v0, Lne7$a;->a:Luu1;

    return-void
.end method

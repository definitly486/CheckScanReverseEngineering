.class public final Lkd$b;
.super Lkd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final e:Lkd$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkd$b;

    const-string v1, "Add_5_checks"

    sget-object v2, Lmx2;->b:Lmx2;

    invoke-direct {v0, v1, v2}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lkd$b;->e:Lkd$b;

    return-void
.end method

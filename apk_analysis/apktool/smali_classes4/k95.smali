.class public final Lk95;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lcom/google/common/collect/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ly91$a;

.field public static final h:Ljava/util/HashMap;

.field public static final i:Lk95;

.field public static final j:Lwb4$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/common/collect/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgo2;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "charset"

    invoke-static {v1, v0}, Lcn1;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lip1;->a()Lip1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lip1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/i$b;

    if-nez v3, :cond_0

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/google/common/collect/j;->m(I)Lcom/google/common/collect/j$a;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lip1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v3, v0}, Lcom/google/common/collect/i$b;->a(Ljava/lang/Object;)Lcom/google/common/collect/i$b;

    invoke-virtual {v2}, Lip1;->entrySet()Ljava/util/Set;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/AbstractCollection;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lix2;->i:Lix2;

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/google/common/collect/l$a;

    check-cast v0, Lip1$a;

    iget-object v2, v0, Lip1$a;->b:Lip1;

    invoke-virtual {v2}, Lip1;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/common/collect/l$a;-><init>(I)V

    invoke-virtual {v0}, Lip1$a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/j$a;

    invoke-virtual {v3}, Lcom/google/common/collect/j$a;->g()Lcom/google/common/collect/w;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/google/common/collect/l$a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v3, v3, Lcom/google/common/collect/w;->e:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/common/collect/k;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/common/collect/l$a;->a(Z)Lcom/google/common/collect/x;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lz24;-><init>(Lcom/google/common/collect/l;I)V

    :goto_1
    sput-object v0, Lk95;->f:Lcom/google/common/collect/k;

    sget-object v0, Ly91$d;->c:Ly91$d;

    sget-object v1, Ly91$i;->c:Ly91$i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ly91$l;

    invoke-direct {v2, v1}, Ly91$k;-><init>(Ly91;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ly91$a;

    invoke-direct {v1, v0, v2}, Ly91$a;-><init>(Ly91;Ly91;)V

    new-instance v2, Ly91$h;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ly91$h;-><init>(C)V

    new-instance v3, Ly91$a;

    invoke-direct {v3, v1, v2}, Ly91$a;-><init>(Ly91;Ly91;)V

    const-string v1, "()<>@,;:\\\"/[]?="

    invoke-static {v1}, Ly91;->a(Ljava/lang/String;)Ly91;

    move-result-object v1

    invoke-virtual {v1}, Ly91;->d()Ly91;

    move-result-object v1

    new-instance v2, Ly91$a;

    invoke-direct {v2, v3, v1}, Ly91$a;-><init>(Ly91;Ly91;)V

    sput-object v2, Lk95;->g:Ly91$a;

    const-string v1, "\"\\\r"

    invoke-static {v1}, Ly91;->a(Ljava/lang/String;)Ly91;

    move-result-object v1

    invoke-virtual {v1}, Ly91;->d()Ly91;

    move-result-object v1

    new-instance v2, Ly91$a;

    invoke-direct {v2, v0, v1}, Ly91$a;-><init>(Ly91;Ly91;)V

    const-string v0, " \t\r\n"

    invoke-static {v0}, Ly91;->a(Ljava/lang/String;)Ly91;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lk95;->h:Ljava/util/HashMap;

    const-string v0, "*"

    invoke-static {v0, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "text"

    invoke-static {v1, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "image"

    invoke-static {v2, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "audio"

    invoke-static {v3, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "video"

    invoke-static {v4, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "application"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "font"

    invoke-static {v6, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cache-manifest"

    invoke-static {v1, v0}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v0, "css"

    invoke-static {v1, v0}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v0, "csv"

    invoke-static {v1, v0}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v0, "html"

    invoke-static {v1, v0}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v0, "calendar"

    invoke-static {v1, v0}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v0, "markdown"

    invoke-static {v1, v0}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v0, "plain"

    invoke-static {v1, v0}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v0, "javascript"

    invoke-static {v1, v0}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v7, "tab-separated-values"

    invoke-static {v1, v7}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v7, "vcard"

    invoke-static {v1, v7}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v7, "vnd.wap.wml"

    invoke-static {v1, v7}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v7, "xml"

    invoke-static {v1, v7}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v8, "vtt"

    invoke-static {v1, v8}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v1, "bmp"

    invoke-static {v2, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-canon-crw"

    invoke-static {v2, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gif"

    invoke-static {v2, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vnd.microsoft.icon"

    invoke-static {v2, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "jpeg"

    invoke-static {v2, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "png"

    invoke-static {v2, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vnd.adobe.photoshop"

    invoke-static {v2, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "svg+xml"

    invoke-static {v2, v1}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v1, "tiff"

    invoke-static {v2, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "avif"

    invoke-static {v2, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "webp"

    invoke-static {v2, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "heif"

    invoke-static {v2, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "jp2"

    invoke-static {v2, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mp4"

    invoke-static {v3, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mpeg"

    invoke-static {v3, v2}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "ogg"

    invoke-static {v3, v8}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "webm"

    invoke-static {v3, v9}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "l16"

    invoke-static {v3, v10}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "l24"

    invoke-static {v3, v10}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "basic"

    invoke-static {v3, v10}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "aac"

    invoke-static {v3, v10}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "vorbis"

    invoke-static {v3, v10}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "x-ms-wma"

    invoke-static {v3, v10}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "x-ms-wax"

    invoke-static {v3, v10}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "vnd.rn-realaudio"

    invoke-static {v3, v10}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "vnd.wave"

    invoke-static {v3, v10}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v8}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "quicktime"

    invoke-static {v4, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-ms-wmv"

    invoke-static {v4, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-flv"

    invoke-static {v4, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "3gpp"

    invoke-static {v4, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "3gpp2"

    invoke-static {v4, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v7}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v1, "atom+xml"

    invoke-static {v5, v1}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v1, "x-bzip2"

    invoke-static {v5, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dart"

    invoke-static {v5, v1}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v1, "vnd.apple.pkpass"

    invoke-static {v5, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vnd.ms-fontobject"

    invoke-static {v5, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "epub+zip"

    invoke-static {v5, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-www-form-urlencoded"

    invoke-static {v5, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pkcs12"

    invoke-static {v5, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "binary"

    invoke-static {v5, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cbor"

    invoke-static {v5, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "geo+json"

    invoke-static {v5, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-gzip"

    invoke-static {v5, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hal+json"

    invoke-static {v5, v1}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v0}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v0, "jose"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "jose+json"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {v5, v0}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    move-result-object v0

    sput-object v0, Lk95;->i:Lk95;

    const-string v0, "jwt"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "manifest+json"

    invoke-static {v5, v0}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v0, "vnd.google-earth.kml+xml"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.google-earth.kmz"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mbox"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-apple-aspen-config"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.ms-excel"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.ms-outlook"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.ms-powerpoint"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "msword"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dash+xml"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wasm"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-nacl"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-pnacl"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "octet-stream"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v8}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.oasis.opendocument.graphics"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.oasis.opendocument.presentation"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.oasis.opendocument.spreadsheet"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.oasis.opendocument.text"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "opensearchdescription+xml"

    invoke-static {v5, v0}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v0, "pdf"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "postscript"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "protobuf"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rdf+xml"

    invoke-static {v5, v0}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v0, "rtf"

    invoke-static {v5, v0}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v0, "font-sfnt"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-shockwave-flash"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.sketchup.skp"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "soap+xml"

    invoke-static {v5, v0}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v0, "x-tar"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "font-woff"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "font-woff2"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xhtml+xml"

    invoke-static {v5, v0}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v0, "xrd+xml"

    invoke-static {v5, v0}, Lk95;->b(Ljava/lang/String;Ljava/lang/String;)Lk95;

    const-string v0, "zip"

    invoke-static {v5, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "collection"

    invoke-static {v6, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "otf"

    invoke-static {v6, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sfnt"

    invoke-static {v6, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ttf"

    invoke-static {v6, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "woff"

    invoke-static {v6, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "woff2"

    invoke-static {v6, v0}, Lk95;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lwb4;

    const-string v1, "; "

    invoke-direct {v0, v1}, Lwb4;-><init>(Ljava/lang/String;)V

    new-instance v1, Lwb4$a;

    invoke-direct {v1, v0}, Lwb4$a;-><init>(Lwb4;)V

    sput-object v1, Lk95;->j:Lwb4$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk95;->a:Ljava/lang/String;

    iput-object p2, p0, Lk95;->b:Ljava/lang/String;

    iput-object p3, p0, Lk95;->c:Lcom/google/common/collect/k;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lk95;

    sget-object v1, Lix2;->i:Lix2;

    invoke-direct {v0, p0, p1, v1}, Lk95;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/k;)V

    sget-object p0, Lk95;->h:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ll;->b:Ll;

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lk95;
    .locals 2

    new-instance v0, Lk95;

    sget-object v1, Lk95;->f:Lcom/google/common/collect/k;

    invoke-direct {v0, p0, p1, v1}, Lk95;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/k;)V

    sget-object p0, Lk95;->h:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance p1, Lnf6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, p0}, Lnf6;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final c()Lcom/google/common/collect/q$e;
    .locals 2

    iget-object p0, p0, Lk95;->c:Lcom/google/common/collect/k;

    invoke-virtual {p0}, Lz24;->m()Lcom/google/common/collect/l;

    move-result-object p0

    new-instance v0, Li95;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li95;-><init>(I)V

    new-instance v1, Lmc3;

    invoke-direct {v1, v0}, Lmc3;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/common/collect/q$e;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/q$e;-><init>(Ljava/util/Map;Lcom/google/common/collect/q$b;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lk95;

    if-eqz v0, :cond_1

    check-cast p1, Lk95;

    iget-object v0, p0, Lk95;->a:Ljava/lang/String;

    iget-object v1, p1, Lk95;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk95;->b:Ljava/lang/String;

    iget-object v1, p1, Lk95;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lk95;->c()Lcom/google/common/collect/q$e;

    move-result-object p0

    invoke-virtual {p1}, Lk95;->c()Lcom/google/common/collect/q$e;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lk95;->e:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lk95;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lk95;->c()Lcom/google/common/collect/q$e;

    move-result-object v1

    iget-object v2, p0, Lk95;->a:Ljava/lang/String;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lk95;->e:I

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lk95;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lk95;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk95;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk95;->c:Lcom/google/common/collect/k;

    invoke-virtual {v1}, Lcom/google/common/collect/g;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lh95;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lia5;

    invoke-direct {v3, v2}, Lia5;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/common/collect/r;

    invoke-direct {v2, v1, v3}, Lcom/google/common/collect/s;-><init>(Leg5;Lia5;)V

    invoke-virtual {v2}, Lcom/google/common/collect/g;->a()Ljava/util/Collection;

    move-result-object v1

    sget-object v2, Lk95;->j:Lwb4$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :try_start_0
    invoke-virtual {v2, v0, v1}, Lwb4$a;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lxg;->d(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk95;->d:Ljava/lang/String;

    :cond_1
    return-object v0
.end method
